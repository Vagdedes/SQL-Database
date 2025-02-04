create table giveaways
(
    id              int auto_increment
        primary key,
    application_id  int      null,
    product_id      int      null,
    amount          tinyint  null,
    creation_date   datetime null,
    expiration_date datetime null,
    completion_date datetime null
);

create index `create`
    on giveaways (application_id, completion_date);

create index create_specific
    on giveaways (completion_date, product_id, application_id);

create index create_step_two
    on giveaways (id, application_id);

create index has_won
    on giveaways (product_id, id);

create index last
    on giveaways (completion_date, id, application_id);

create index last_specific
    on giveaways (completion_date, product_id, id, application_id);


