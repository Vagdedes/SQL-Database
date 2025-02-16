create table botQuestionnaires
(
    id                         int auto_increment
        primary key,
    title                      varchar(100)  null,
    server_id                  bigint        null,
    create_channel_category_id bigint        null,
    create_channel_id          bigint        null,
    create_channel_name        varchar(32)   null,
    create_channel_topic       varchar(256)  null,
    instruction_column_reply   varchar(64)   null,
    prompt_message             varchar(2000) null,
    finish_message             varchar(2000) null,
    failure_message            varchar(2000) null,
    questionnaire_duration     varchar(32)   null,
    cooldown_duration          varchar(32)   null,
    questionnaire_cooldown     varchar(32)   null,
    max_open                   int           null,
    automatic                  tinyint(1)    null,
    close_oldest_if_max_open   tinyint(1)    null,
    allow_permission           bigint        null,
    deny_permission            bigint        null,
    outcome_server_id          bigint        null,
    outcome_channel_id         bigint        null,
    ai_model_id                int           null,
    creation_date              datetime      null,
    creation_reason            varchar(3000) null,
    expiration_date            datetime      null,
    expiration_reason          varchar(3000) null,
    deletion_date              datetime      null,
    deletion_reason            varchar(3000) null
);

create index get
    on botQuestionnaires (expiration_date, deletion_date);


