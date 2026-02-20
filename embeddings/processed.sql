create table processed
(
    id              int auto_increment
        primary key,
    embedding_hash  bigint       null,
    embedding_model varchar(128) null,
    is_multiple     tinyint(1)   null,
    actual          longtext     null,
    objectified     longtext     null,
    creation_date   timestamp    null,
    expiration_date timestamp    null,
    deletion_date   timestamp    null
);

create index get
    on processed (embedding_hash, embedding_model, deletion_date, expiration_date, id);


