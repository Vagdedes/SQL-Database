create table storage
(
    id            bigint auto_increment
        primary key,
    email_address varchar(384)  null,
    comments      varchar(1500) null,
    test          tinyint(1)    null,
    creation_date datetime      null
);

create index email
    on storage (email_address);


