create table botCountingMessages
(
    id              bigint auto_increment
        primary key,
    counting_id     int           null,
    user_id         bigint        null,
    message_id      bigint        null,
    sent_number     double        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index history
    on botCountingMessages (id, counting_id, deletion_date);


