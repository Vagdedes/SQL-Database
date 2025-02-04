create table storage
(
    id            bigint auto_increment
        primary key,
    phone_number  varchar(19)    null,
    test          tinyint(1)     null,
    creation_date datetime       null,
    comments      varchar(16000) null
);

create index phone
    on storage (phone_number);


