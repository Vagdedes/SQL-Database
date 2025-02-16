create table botChannels
(
    id                                   int auto_increment
        primary key,
    server_id                            bigint        null,
    category_id                          bigint        null,
    channel_id                           bigint        null,
    thread_id                            bigint        null,
    ai_model_id                          int           null,
    ai_disclaimer                        varchar(512)  null,
    filter                               tinyint(1)    null,
    whitelist                            tinyint(1)    null,
    debug                                tinyint(1)    null,
    feedback                             tinyint(1)    null,
    require_mention                      tinyint(1)    null,
    not_require_mention_time             varchar(32)   null,
    ignore_mention_when_others_mentioned tinyint(1)    null,
    ignore_mention_when_no_staff         tinyint(1)    null,
    ignore_mention                       tinyint(1)    null,
    require_starting_text                varchar(64)   null,
    require_contained_text               varchar(64)   null,
    require_ending_text                  varchar(64)   null,
    min_message_length                   int           null,
    max_message_length                   int           null,
    max_attachments_length               int           null,
    message_cooldown                     varchar(32)   null,
    message_retention                    varchar(32)   null,
    prompt_message                       varchar(2000) null,
    cooldown_message                     varchar(2000) null,
    failure_message                      varchar(2000) null,
    welcome_message                      varchar(2000) null,
    goodbye_message                      varchar(2000) null,
    listener_class                       varchar(64)   null,
    listener_method                      varchar(128)  null,
    creation_date                        datetime      null,
    creation_reason                      varchar(1900) null,
    expiration_date                      datetime      null,
    expiration_reason                    varchar(1666) null,
    deletion_date                        datetime      null,
    deletion_reason                      varchar(1666) null
);

create index get
    on botChannels (expiration_date, deletion_date, thread_id);


