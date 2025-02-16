create table botMessageFilterConstants
(
    id                int auto_increment
        primary key,
    filter_id         int           null,
    constant_key      varchar(32)   null,
    message           varchar(2000) null,
    points            int           null,
    seconds_period    int           null,
    mute_period       varchar(32)   null,
    creation_date     datetime      null,
    creation_reason   varchar(4500) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4500) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4500) null
);

create index get
    on botMessageFilterConstants (expiration_date, deletion_date, filter_id);


