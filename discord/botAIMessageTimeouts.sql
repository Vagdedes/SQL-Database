create table botAIMessageTimeouts
(
    id                int           not null
        primary key,
    limit_id          int           null,
    user_id           bigint        null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botAIMessageTimeouts (deletion_date, expiration_date, user_id, limit_id);


