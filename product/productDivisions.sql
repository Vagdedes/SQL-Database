create table productDivisions
(
    id              int auto_increment
        primary key,
    product_id      int           null,
    family          varchar(128)  null,
    name            varchar(128)  null,
    description     varchar(5333) null,
    no_html         tinyint(1)    null,
    post_purchase   tinyint(1)    null,
    creation_date   datetime      null,
    creation_reason varchar(5333) null,
    deletion_date   datetime      null,
    deletion_reason varchar(5333) null
);

create index product
    on productDivisions (product_id, deletion_date, post_purchase);


