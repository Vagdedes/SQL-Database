create table settings
(
    id                     bigint auto_increment
        primary key,
    account_id             int(11) unsigned null,
    option_key             varchar(64)      null,
    option_value           varchar(16000)   null,
    creation_date          datetime         null,
    last_modification_date datetime         null
);

create index panel
    on settings (account_id, id);

create index `specific`
    on settings (account_id, option_key);


