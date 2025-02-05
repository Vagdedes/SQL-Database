create table compatibilities
(
    id                    int auto_increment
        primary key,
    product_id            int           null,
    compatible_product_id int           null,
    creation_date         datetime      null,
    creation_reason       varchar(8000) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(8000) null
);

create index product_id
    on compatibilities (product_id, deletion_date);


