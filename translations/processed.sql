create table processed
(
    id                   int auto_increment
        primary key,
    translation_hash     bigint      null,
    translation_language varchar(64) null,
    actual               longtext    null,
    translation          longtext    null,
    creation_date        timestamp   null,
    expiration_date      timestamp   null,
    deletion_date        timestamp   null
);

create index get
    on processed (translation_hash, translation_language, deletion_date, expiration_date, id);


