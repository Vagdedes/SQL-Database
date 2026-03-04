create table local
(
    id                int auto_increment
        primary key,
    priority          int            null,
    information       varchar(15000) null,
    `replace`         tinyint(1)     null,
    creation_date     datetime       null,
    creation_reason   varchar(256)   null,
    expiration_date   datetime       null,
    expiration_reason varchar(256)   null,
    deletion_date     datetime       null,
    deletion_reason   varchar(256)   null
);

create index get
    on local (priority, expiration_date, deletion_date);


