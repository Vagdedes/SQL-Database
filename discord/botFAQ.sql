create table botFAQ
(
    id              int auto_increment
        primary key,
    server_id       bigint        null,
    question        varchar(100)  null,
    answer          varchar(2000) null,
    creation_date   datetime      null,
    creation_reason varchar(7000) null,
    created_by      bigint        null,
    deletion_date   datetime      null,
    deletion_reason varchar(7000) null,
    deleted_by      bigint        null,
    constraint get
        unique (id, deletion_date, server_id)
);

create index get_specific
    on botFAQ (question, server_id, deletion_date, id);

create index open
    on botFAQ (id, deletion_date);


