create table tiers
(
    id                     int auto_increment
        primary key,
    product_id             int           null,
    name                   varchar(128)  null,
    price                  double        null,
    currency               varchar(8)    null,
    duration               varchar(32)   null,
    required_products      varchar(64)   null,
    required_patreon_tiers varchar(128)  null,
    required_patreon_cents int           null,
    give_permission        varchar(64)   null,
    required_permission    varchar(128)  null,
    creation_date          datetime      null,
    creation_reason        varchar(5250) null,
    expiration_date        datetime      null,
    expiration_reason      varchar(5250) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(5250) null
);

create index get
    on tiers (product_id, expiration_date, deletion_date, price, give_permission);


