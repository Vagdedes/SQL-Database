create table processed
(
    id               int auto_increment
        primary key,
    translation_hash bigint        null,
    language         varchar(64)   null,
    actual           varchar(8000) null,
    translation      varchar(8000) null,
    creation_date    timestamp     null,
    expiration_date  timestamp     null,
    deletion_date    timestamp     null
);

create index get
    on processed (translation_hash, language, deletion_date, expiration_date, id);


