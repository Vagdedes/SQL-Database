create table botMessageFilterKeywords
(
    id                int auto_increment
        primary key,
    filter_id         int           null,
    keyword           varchar(2000) null,
    creation_date     datetime      null,
    creation_reason   varchar(4666) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4666) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4666) null
);

create index get
    on botMessageFilterKeywords (expiration_date, deletion_date, filter_id);


