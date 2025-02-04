create table replacements
(
    id                int auto_increment
        primary key,
    find              varchar(128)  null,
    replacement       varchar(512)  null,
    creation_date     datetime      null,
    creation_reason   varchar(5000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5000) null
);

create index get
    on replacements (expiration_date, deletion_date);


