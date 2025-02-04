create table bufferCooldowns
(
    id         bigint auto_increment
        primary key,
    account_id int(11) unsigned null,
    action_id  int              null,
    threshold  int              null,
    expiration bigint           null
);

create index `check`
    on bufferCooldowns (account_id, action_id, expiration);

create index panel
    on bufferCooldowns (account_id, id);


