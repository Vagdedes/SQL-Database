create table exemptionKeys
(
    id              bigint auto_increment
        primary key,
    token           varchar(1024)  null,
    plan_id         int            null,
    email_id        int            null,
    deletion_date   datetime       null,
    deletion_reason varchar(15000) null
);

create index plan_id
    on exemptionKeys (plan_id, email_id, deletion_date);


