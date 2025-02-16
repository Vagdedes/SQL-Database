create table botQuestionnaireTracking
(
    id                        bigint auto_increment
        primary key,
    questionnaire_id          int           null,
    questionnaire_creation_id bigint        null,
    user_id                   bigint        null,
    server_id                 bigint        null,
    channel_id                bigint        null,
    created_thread_id         bigint        null,
    outcome_message           varchar(8000) null,
    creation_date             datetime      null,
    completion_date           datetime      null,
    expiration_date           datetime      null,
    expired                   tinyint(1)    null,
    deletion_date             datetime      null,
    deletion_reason           varchar(8000) null,
    deleted_by                bigint        null
);

create index compare
    on botQuestionnaireTracking (questionnaire_creation_id);

create index expired
    on botQuestionnaireTracking (expired, expiration_date, deletion_date, id, completion_date);

create index get_user
    on botQuestionnaireTracking (id, user_id, server_id);

create index get_user_limited
    on botQuestionnaireTracking (user_id, id, creation_date, server_id);

create index max_open
    on botQuestionnaireTracking (id, questionnaire_id, expiration_date, expired, deletion_date, completion_date);

create index message_track
    on botQuestionnaireTracking (server_id, channel_id, id);

create index oldest
    on botQuestionnaireTracking (deletion_date, expired, creation_date, questionnaire_id, completion_date);


