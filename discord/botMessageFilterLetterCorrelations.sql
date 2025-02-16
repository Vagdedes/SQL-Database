create table botMessageFilterLetterCorrelations
(
    id                 int auto_increment
        primary key,
    filter_id          int           null,
    letter             varchar(4)    null,
    letter_correlation varchar(4)    null,
    creation_date      datetime      null,
    creation_reason    varchar(4666) null,
    expiration_date    datetime      null,
    expiration_reason  varchar(4666) null,
    deletion_date      datetime      null,
    deletion_reason    varchar(4666) null
);

create index get
    on botMessageFilterLetterCorrelations (expiration_date, deletion_date, filter_id);


