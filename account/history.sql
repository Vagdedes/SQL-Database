create table history
(
    id            bigint auto_increment
        primary key,
    account_id    int(11) unsigned null,
    action_id     varchar(128)     null,
    ip_address    varchar(39)      null,
    user_agent    varchar(5333)    null,
    old_data      varchar(5333)    null,
    new_data      varchar(5333)    null,
    creation_date datetime         null
);

create index list
    on history (id, account_id);


