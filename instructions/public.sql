create table public
(
    id                     int auto_increment
        primary key,
    priority               int           null,
    information_url        varchar(512)  null,
    information_value      longtext      null,
    information_expiration datetime      null,
    information_duration   varchar(32)   null,
    contains               varchar(4000) null,
    auto_contains          int           null,
    `replace`              tinyint(1)    null,
    default_use            tinyint(1)    null,
    sub_directories        tinyint(1)    null,
    creation_date          datetime      null,
    creation_reason        varchar(3750) null,
    expiration_date        datetime      null,
    expiration_reason      varchar(3750) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(3750) null
);

create index get
    on public (deletion_date, priority, expiration_date);


