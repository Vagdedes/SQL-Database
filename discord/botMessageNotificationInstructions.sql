create table botMessageNotificationInstructions
(
    id                int auto_increment
        primary key,
    notification_id   int           null,
    instruction_id    int           null,
    public            tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botMessageNotificationInstructions (notification_id, expiration_date, deletion_date, public);


