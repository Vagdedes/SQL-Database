create table doubleStatistics
(
    id                  int auto_increment
        primary key,
    type                int              null,
    account_id          int(11) unsigned null,
    statistic_key       varchar(128)     null,
    statistic_value     double           null,
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
    on doubleStatistics (account_id, expiration_date, deletion_date, id);

create index account_time
    on doubleStatistics (account_id, modification_date, expiration_date, deletion_date);

create index `all`
    on doubleStatistics (type, expiration_date, deletion_date, id);

create index all_time
    on doubleStatistics (type, modification_date, expiration_date, deletion_date);

create index `check`
    on doubleStatistics (type, statistic_key, deletion_date, expiration_date, id);

create index check_specific
    on doubleStatistics (type, statistic_key, account_id, deletion_date, expiration_date, id);

create index check_time
    on doubleStatistics (type, statistic_key, modification_date, expiration_date, deletion_date);

create index check_time_specific
    on doubleStatistics (type, account_id, statistic_key, modification_date, expiration_date, deletion_date);

create index panel
    on doubleStatistics (id, account_id);


