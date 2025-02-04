create table currencies
(
    id              int auto_increment
        primary key,
    code            varchar(8)    null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index get
    on currencies (deletion_date, id);


