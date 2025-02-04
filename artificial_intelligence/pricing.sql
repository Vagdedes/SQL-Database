create table pricing
(
    id               int auto_increment
        primary key,
    model_id         int           null,
    parameter_family int           null,
    parameter_name   varchar(64)   null,
    parameter_match  varchar(64)   null,
    price            float         null,
    currency_id      int           null,
    creation_date    datetime      null,
    creation_reason  varchar(8000) null,
    deletion_date    datetime      null,
    deletion_reason  varchar(8000) null
);

create index get
    on pricing (model_id, deletion_date);


