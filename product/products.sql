create table products
(
    id                        int auto_increment
        primary key,
    application_id            int              null,
    account_id                int(11) unsigned null,
    priority                  int              null,
    name                      varchar(128)     null,
    description               varchar(512)     null,
    color                     varchar(6)       null,
    compatibility_description varchar(128)     null,
    image                     varchar(256)     null,
    sub_image                 varchar(256)     null,
    legal_information         varchar(256)     null,
    requires_account          tinyint(1)       null,
    show_in_list              tinyint(1)       null,
    giveaway                  tinyint(1)       null,
    creation_date             datetime         null,
    creation_reason           varchar(5000)    null,
    deletion_date             datetime         null,
    deletion_reason           varchar(5000)    null
);

create index account
    on products (account_id, deletion_date, priority);

create index get_priority
    on products (priority, deletion_date, application_id);

create index get_specific
    on products (deletion_date, id, application_id);

create index panel
    on products (id, application_id);


