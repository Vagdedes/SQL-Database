create table botMessageNotificationRoles
(
    id                bigint auto_increment
        primary key,
    notification_id   int           null,
    role_id           bigint        null,
    has_role          tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botMessageNotificationRoles (notification_id, expiration_date, deletion_date);


