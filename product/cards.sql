create table cards
(
    id               int auto_increment
        primary key,
    product_id       int           null,
    image            varchar(256)  null,
    name             varchar(2000) null,
    url              varchar(512)  null,
    requires_account tinyint(1)    null,
    post_purchase    tinyint(1)    null,
    creation_date    datetime      null,
    creation_reason  varchar(6666) null,
    deletion_date    datetime      null,
    deletion_reason  varchar(6666) null
);

create index product
    on cards (product_id, post_purchase, deletion_date);


