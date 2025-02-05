create table coupons
(
    id                int auto_increment
        primary key,
    account_id        int(11) unsigned null,
    product_id        int              null,
    name              varchar(64)      null,
    discount          double           null,
    uses              int              null,
    creation_date     datetime         null,
    creation_reason   varchar(5333)    null,
    expiration_date   datetime         null,
    expiration_reason varchar(5333)    null,
    deletion_date     datetime         null,
    deletion_reason   varchar(5333)    null
);

create index panel
    on coupons (id, account_id);

create index retrieve
    on coupons (account_id, product_id, creation_date, expiration_date, deletion_date, id, name);


