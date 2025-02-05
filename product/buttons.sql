create table buttons
(
    id               int auto_increment
        primary key,
    product_id       int           null,
    color            varchar(16)   null,
    name             varchar(64)   null,
    url              varchar(512)  null,
    requires_account tinyint(1)    null,
    post_purchase    tinyint(1)    null,
    creation_date    datetime      null,
    creation_reason  varchar(7500) null,
    deletion_date    datetime      null,
    deletion_reason  varchar(7500) null
);

create index product
    on buttons (product_id, post_purchase, deletion_date);


