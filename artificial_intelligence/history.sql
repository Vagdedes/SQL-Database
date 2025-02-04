create table history
(
    id                  bigint auto_increment
        primary key,
    model_id            int      null,
    hash                bigint   null,
    random_id           bigint   null,
    sent_parameters     longtext null,
    received_parameters longtext null,
    currency_id         int      null,
    creation_date       datetime null
);

create index get
    on history (hash, id);

create index get_specific
    on history (random_id, id);


