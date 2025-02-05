create table longStatistics
(
    id                  int auto_increment
        primary key,
    type                int              null,
    account_id          int(11) unsigned null,
    statistic_key       varchar(128)     null,
    statistic_value     bigint           null,
    creation_date       datetime         null,
    creation_reason     varchar(4000)    null,
    modification_date   datetime         null,
    modification_reason varchar(4000)    null,
    expiration_date     datetime         null,
    expiration_reason   varchar(4000)    null,
    deletion_date       datetime         null,
    deletion_reason     varchar(4000)    null
);

create index account
    on longStatistics (account_id, expiration_date, deletion_date, id);

create index account_time
    on longStatistics (account_id, modification_date, expiration_date, deletion_date);

create index `all`
    on longStatistics (type, expiration_date, deletion_date, id);

create index all_time
    on longStatistics (type, modification_date, expiration_date, deletion_date);

create index `check`
    on longStatistics (type, statistic_key, deletion_date, expiration_date, id);

create index check_specific
    on longStatistics (type, statistic_key, account_id, deletion_date, expiration_date, id);

create index check_time
    on longStatistics (type, statistic_key, expiration_date, deletion_date, modification_date);

create index check_time_specific
    on longStatistics (modification_date, expiration_date, deletion_date, type, account_id, statistic_key);

create index panel
    on longStatistics (id, account_id);


