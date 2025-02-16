create table botTicketMessages
(
    id                 bigint auto_increment
        primary key,
    ticket_creation_id bigint        null,
    user_id            bigint        null,
    message_id         bigint        null,
    message_content    varchar(4000) null,
    creation_date      datetime      null,
    creation_reason    varchar(6000) null,
    deletion_date      datetime      null,
    deletion_reason    varchar(6000) null
);

create index get
    on botTicketMessages (ticket_creation_id, deletion_date, id);


