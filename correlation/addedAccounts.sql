create table addedAccounts
(
    id                  bigint auto_increment
        primary key,
    account_id          int(11) unsigned null,
    accepted_account_id int              null,
    credential          varchar(384)     null,
    creation_date       datetime         null,
    deletion_date       datetime         null
);

create index account_find
    on addedAccounts (deletion_date, accepted_account_id, credential, id);

create index account_lookup
    on addedAccounts (accepted_account_id, credential, deletion_date, account_id);

create index added
    on addedAccounts (account_id, deletion_date);

create index added_specific
    on addedAccounts (account_id, accepted_account_id, deletion_date);

create index lookup
    on addedAccounts (accepted_account_id, credential, deletion_date);

create index panel
    on addedAccounts (account_id, id);

create index purchases
    on addedAccounts (deletion_date, credential, accepted_account_id);

create index remove_1
    on addedAccounts (account_id, accepted_account_id, deletion_date, id);

create index remove_2
    on addedAccounts (deletion_date, accepted_account_id, account_id, credential);


