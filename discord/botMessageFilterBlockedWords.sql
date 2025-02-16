create table botMessageFilterBlockedWords
(
    id                int auto_increment
        primary key,
    filter_id         int           null,
    word              varchar(2000) null,
    points            int           null,
    seconds_period    int           null,
    mute_period       varchar(32)   null,
    message           varchar(2000) null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botMessageFilterBlockedWords (expiration_date, deletion_date, filter_id);


