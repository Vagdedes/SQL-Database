create table purchases
(
    id                      bigint auto_increment
        primary key,
    account_id              int           null,
    product_id              int           null,
    tier_id                 int           null,
    exchange_id             int           null,
    transaction_id          varchar(64)   null,
    coupon                  varchar(64)   null,
    price                   double        null,
    currency                varchar(8)    null,
    creation_date           datetime      null,
    creation_reason         varchar(8000) null,
    expiration_date         datetime      null,
    expiration_notification datetime      null,
    deletion_date           datetime      null,
    deletion_reason         varchar(8000) null
);

create index account_1
    on purchases (account_id, deletion_date, expiration_date);

create index account_2
    on purchases (expiration_notification, deletion_date, account_id);

create index account_deleted
    on purchases (account_id, deletion_date);

create index coupon
    on purchases (coupon);

create index registered_buyers
    on purchases (product_id, deletion_date);

create index transaction
    on purchases (transaction_id, product_id, account_id);


