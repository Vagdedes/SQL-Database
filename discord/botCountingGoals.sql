create table botCountingGoals
(
    id                int auto_increment
        primary key,
    counting_id       int           null,
    title             varchar(128)  null,
    description       varchar(512)  null,
    target_number     double        null,
    message_name      varchar(64)   null,
    message_content   varchar(2000) null,
    listener_class    varchar(128)  null,
    listener_method   varchar(64)   null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botCountingGoals (counting_id, expiration_date, deletion_date);


