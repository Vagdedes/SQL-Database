create table dependencies
(
    id                    int auto_increment
        primary key,
    product_id            int           null,
    dependency_product_id int           null,
    creation_date         datetime      null,
    creation_reason       varchar(8000) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(8000) null
);

create index product_id
    on dependencies (product_id, deletion_date);


