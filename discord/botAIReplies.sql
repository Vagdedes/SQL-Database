create table botAIReplies
(
    id              bigint auto_increment
        primary key,
    ai_hash         int            null,
    server_id       bigint         null,
    channel_id      bigint         null,
    thread_id       bigint         null,
    bot_id          bigint         null,
    user_id         bigint         null,
    cost            double         null,
    currency_id     int            null,
    creation_date   datetime       null,
    deletion_date   datetime       null,
    deletion_reason varchar(12000) null
);

create index channel_cost
    on botAIReplies (id, creation_date, deletion_date, server_id, channel_id);

create index channel_user_cost
    on botAIReplies (id, creation_date, deletion_date, server_id, channel_id, user_id);

create index get
    on botAIReplies (deletion_date, user_id, id);

create index get_channel
    on botAIReplies (deletion_date, user_id, channel_id, server_id, id);

create index get_server
    on botAIReplies (deletion_date, user_id, server_id, id);

create index get_thread
    on botAIReplies (deletion_date, user_id, server_id, thread_id, id);

create index plan_cost
    on botAIReplies (deletion_date, creation_date, id);

create index server_cost
    on botAIReplies (id, creation_date, deletion_date, server_id);

create index server_user_cost
    on botAIReplies (id, creation_date, deletion_date, server_id, user_id);

create index user_cost
    on botAIReplies (user_id, deletion_date, id, creation_date);


