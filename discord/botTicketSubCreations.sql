create table botTicketSubCreations
(
    id                 bigint auto_increment
        primary key,
    ticket_creation_id bigint         null,
    input_key          varchar(45)    null,
    input_value        varchar(15000) null
);

create index get
    on botTicketSubCreations (ticket_creation_id);


