create table unknownEmailProcessing
(
    id             int auto_increment
        primary key,
    transaction_id varchar(64)  null,
    email_address  varchar(384) null,
    creation_date  varchar(45)  null
);

create index find
    on unknownEmailProcessing (transaction_id, email_address);


