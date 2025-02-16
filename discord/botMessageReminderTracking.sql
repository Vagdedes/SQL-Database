create table botMessageReminderTracking
(
    id              bigint auto_increment
        primary key,
    reminder_id     int           null,
    server_id       bigint        null,
    channel_id      bigint        null,
    thread_id       bigint        null,
    message_id      bigint        null,
    message_object  varchar(8000) null,
    creation_date   datetime      null,
    creation_reason varchar(4000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(4000) null
);

create index cooldown
    on botMessageReminderTracking (reminder_id, creation_date, deletion_date);

create index history
    on botMessageReminderTracking (id, reminder_id, deletion_date);


