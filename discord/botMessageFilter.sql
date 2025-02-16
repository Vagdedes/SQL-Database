create table botMessageFilter
(
    id                int auto_increment
        primary key,
    ai_model_id       int           null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botMessageFilter (expiration_date, deletion_date);


