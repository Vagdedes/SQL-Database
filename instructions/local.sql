create table local
(
    id                int auto_increment
        primary key,
    priority          int           null,
    information       varchar(4000) null,
    contains          varchar(4000) null,
    auto_contains     tinyint(1)    null,
    browse            tinyint(1)    null,
    `replace`         tinyint(1)    null,
    default_use       tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(2000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(2000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(2000) null
);

create index get
    on local (priority, expiration_date, deletion_date);


